from rest_framework import serializers
from eshopRest.models import Rules
from eshopRest.models import Role
from eshopRest.models import CompanyData
from eshopRest.models import Order
from eshopRest.models import User
from eshopRest.models import UserRole
from eshopRest.models import OrderState

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
