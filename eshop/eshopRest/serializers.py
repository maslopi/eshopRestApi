from rest_framework import serializers
from eshopRest.models import Rules
from eshopRest.models import Role
from eshopRest.models import CompanyData
from eshopRest.models import Attachment
from eshopRest.models import Product
from eshopRest.models import ProductCategory
from eshopRest.models import Article


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

class AttachmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attachment
        fields = ('id', 'productid', 'name', 'path', 'extension')

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ('id', 'categoryid', 'name', 'enabled', 'description', 'price')

class ProductCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductCategory
        fields = ('id', 'parentid', 'name', 'description', 'enabled', 'parent')

class ArticleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Article
        fields = ('id', 'userid', 'date', 'title', 'body')