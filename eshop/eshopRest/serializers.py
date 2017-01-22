from rest_framework import serializers
from eshopRest.models import Rules
from eshopRest.models import Role
from eshopRest.models import CompanyData


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