from eshopRest.models import Rules
from eshopRest.serializers import RulesSerializer
from eshopRest.models import Role
from eshopRest.serializers import RoleSerializer
from eshopRest.models import CompanyData
from eshopRest.serializers import CompanyDataSerializer
from eshopRest.models import Attachment
from eshopRest.serializers import AttachmentSerializer
from eshopRest.models import Product
from eshopRest.serializers import ProductSerializer
from eshopRest.models import ProductCategory
from eshopRest.serializers import ProductCategorySerializer
from eshopRest.models import Article
from eshopRest.serializers import ArticleSerializer
from rest_framework import generics
from rest_framework import viewsets
from rest_framework.decorators import detail_route
from rest_framework import renderers


class RulesViewSet(viewsets.ModelViewSet):
    queryset = Rules.objects.all()
    serializer_class = RulesSerializer

class RoleViewSet(viewsets.ModelViewSet):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer

class CompanyDataViewSet(viewsets.ModelViewSet):
    queryset = CompanyData.objects.all()
    serializer_class = CompanyDataSerializer

class AttachmentViewSet(viewsets.ModelViewSet):
    queryset = Attachment.objects.all()
    serializer_class = AttachmentSerializer

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class ProductCategoryViewSet(viewsets.ModelViewSet):
    queryset = ProductCategory.objects.all()
    serializer_class = ProductCategorySerializer

class ArticleViewSet(viewsets.ModelViewSet):
    queryset = Article.objects.all()
    serializer_class = ArticleSerializer