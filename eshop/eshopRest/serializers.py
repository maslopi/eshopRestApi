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
from eshopRest.models import OrderProduct
from eshopRest.models import CompanyFeedback
from eshopRest.models import ProductFeedback
from eshopRest.models import ProductRate

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
        fields = ('id', 'name')

class AttachmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attachment
        fields = ('id', 'productID', 'name', 'path', 'extension')

class RecursiveSerializer(serializers.Serializer):
    def to_representation(self, instance):
        serializer = self.parent.__class__(instance, context=self.context)
        return serializer.data

class ProductCategorySerializer(serializers.ModelSerializer):
    parent = RecursiveSerializer(source='parentID', many=False, read_only=True)

    class Meta:
        model = ProductCategory
        fields = ('id', 'parentID', 'name', 'description', 'enabled', 'parent')

class ProductSerializer(serializers.ModelSerializer):
    attachments = AttachmentSerializer(many=True, read_only=True, source='get_attachments')
    category = ProductCategorySerializer(source='categoryID', read_only=True)

    class Meta:
        model = Product
        fields = ('id', 'categoryID', 'name', 'enabled', 'description', 'price', 'attachments','category')

class ArticleSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userID', read_only=True)

    class Meta:
        model = Article
        fields = ('id', 'userID', 'date', 'title', 'body', 'user')

class CompanyFeedbackSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userID', read_only=True)

    class Meta:
        model = CompanyFeedback
        fields = ('id', 'userID', 'rate', 'description', 'user')

class ProductFeedbackSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userID', read_only=True)
    product = ProductSerializer(source='productID', read_only=True)

    class Meta:
        model = ProductFeedback
        fields = ('id', 'productID', 'parentID', 'userID', 'description', 'user', 'product')

class ProductRateSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userID', read_only=True)
    product = ProductSerializer(source='productID', read_only=True)

    class Meta:
        model = ProductRate
        fields = ('id', 'productID', 'userID', 'rate', 'user', 'product')

class OrderProductSerializer(serializers.ModelSerializer):
    product = ProductSerializer(source='productID', read_only=True)
    class Meta:
        model = OrderProduct
        fields = ('productID', 'amount', 'price', 'product')

class OrderSerializer(serializers.ModelSerializer):
    user = UserSerializer(source='userID', read_only=True)
    orderState = OrderStateSerializer(source='stateID', read_only=True)
    products = OrderProductSerializer(many=True, read_only=False, source='get_products')
    class Meta:
        model = Order
        fields = ('id', 'userID', 'stateID', 'date', 'user', 'orderState', 'products')

    def create(self, validated_data):
        print(validated_data)
        productsData = validated_data.pop('get_products')
        order = Order.objects.create(**validated_data)
        for orderProduct in productsData:

           OrderProduct.objects.create(id=order, **orderProduct)
        return order