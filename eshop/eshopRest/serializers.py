from rest_framework import serializers
from eshopRest.models import Rules
from eshopRest.models import Role
from eshopRest.models import CompanyData
from eshopRest.models import Attachment
from eshopRest.models import Product
from eshopRest.models import ProductCategory
from eshopRest.models import Article
from eshopRest.models import Order
from eshopRest.models import User
from eshopRest.models import UserRole
from eshopRest.models import OrderState
from eshopRest.models import CompanyFeedback
from eshopRest.models import ProductFeedback

class RulesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rules
        fields = ('id', 'content')

class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = ('id', 'name')

class CompanyDataSerializer(serializers.ModelSerializer):
    class Meta:
        model = CompanyData
        fields = ('id', 'content')

class UserRoleSerializer(serializers.ModelSerializer):
    role = RoleSerializer(source='roleid')
    class Meta:
        model = UserRole
        fields = ('role')

class UserSerializer(serializers.ModelSerializer):
    roles = RoleSerializer(many=True, read_only=True)
    class Meta:
        model = User
        fields = ('id', 'email', 'firstName', 'lastName', 'password', 'enabled', 'roles')

class OrderStateSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderState
        fields = ('id', 'name', 'description')

class OrderSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userid')
    orderState = OrderStateSerializer(source='stateid')
    class Meta:
        model = Order
        fields = ('id', 'userid', 'stateid', 'date', 'user', 'orderState')

class AttachmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attachment
        fields = ('id', 'productid', 'name', 'path', 'extension')

class RecursiveSerializer(serializers.Serializer):
    def to_representation(self, instance):
        serializer = self.parent.__class__(instance, context=self.context)
        return serializer.data

class ProductCategorySerializer(serializers.ModelSerializer):
    parent = RecursiveSerializer(source='parentid', many=False, read_only=True)

    class Meta:
        model = ProductCategory
        fields = ('id', 'parentid', 'name', 'description', 'enabled', 'parent')

class ProductSerializer(serializers.ModelSerializer):
    attachments = AttachmentSerializer(many=True, read_only=True, source='get_attachments')
    category = ProductCategorySerializer(source='categoryid')

    class Meta:
        model = Product
        fields = ('id', 'categoryid', 'name', 'enabled', 'description', 'price', 'attachments','category')

class ArticleSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userid', read_only=True)

    class Meta:
        model = Article
        fields = ('id', 'userid', 'date', 'title', 'body', 'user')

class CompanyFeedbackSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userid', read_only=True)

    class Meta:
        model = CompanyFeedback
        fields = ('id', 'userid', 'rate', 'description', 'user')

class ProductFeedbackSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userid', read_only=True)
    product = ProductSerializer(source='productid', read_only=True)

    class Meta:
        model = ProductFeedback
        fields = ('id', 'productid', 'parentid', 'userid', 'description', 'user', 'product')