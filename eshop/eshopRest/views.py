from eshopRest.models import Rules
from eshopRest.serializers import RulesSerializer
from eshopRest.models import Role
from eshopRest.serializers import RoleSerializer
from eshopRest.models import CompanyData
from eshopRest.serializers import CompanyDataSerializer
from rest_framework import generics
from rest_framework import viewsets
from rest_framework.decorators import detail_route
from rest_framework import renderers
from eshopRest.models import Order
from eshopRest.serializers import OrderSerializer


class RulesViewSet(viewsets.ModelViewSet):
    queryset = Rules.objects.all()
    serializer_class = RulesSerializer

class RoleViewSet(viewsets.ModelViewSet):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer

class CompanyDataViewSet(viewsets.ModelViewSet):
    queryset = CompanyData.objects.all()
    serializer_class = CompanyDataSerializer

class OrderViewSet(viewsets.ModelViewSet):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

