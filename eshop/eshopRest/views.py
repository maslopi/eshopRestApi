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
from eshopRest.models import Order
from eshopRest.serializers import OrderSerializer
from eshopRest.models import CompanyFeedback
from eshopRest.serializers import CompanyFeedbackSerializer
from eshopRest.models import ProductFeedback
from eshopRest.serializers import ProductFeedbackSerializer
from eshopRest.models import ProductRate
from eshopRest.serializers import ProductRateSerializer
from eshopRest.models import User;


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

class OrderViewSet(viewsets.ModelViewSet):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

class CompanyFeedbackViewSet(viewsets.ModelViewSet):
    queryset = CompanyFeedback.objects.all()
    serializer_class = CompanyFeedbackSerializer

class ProductFeedbackViewSet(viewsets.ModelViewSet):
    queryset = ProductFeedback.objects.all()
    serializer_class = ProductFeedbackSerializer

class ProductRateViewSet(viewsets.ModelViewSet):
    queryset = ProductRate.objects.all()
    serializer_class = ProductRateSerializer

class UserOrderViewSet(generics.ListAPIView):
    serializer_class = OrderSerializer

    def get_queryset(self):
        userId = self.kwargs['userID']
        return Order.objects.filter(userID = userId)

class UserArticleViewSet(generics.ListAPIView):
    serializer_class =  ArticleSerializer

    def get_queryset(self):
        username = self.kwargs['username']
        return Article.objects.filter(userID__lastName=username)