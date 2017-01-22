from django.conf.urls import url
from rest_framework.urlpatterns import format_suffix_patterns
from eshopRest import views
from eshopRest.views import RulesViewSet, RoleViewSet, CompanyDataViewSet, api_root
from rest_framework import renderers

rules_list = RulesViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
rules_detail = RulesViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

role_list = RoleViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
role_detail = RoleViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

companydata_list = CompanyDataViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
companydata_detail = CompanyDataViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})


urlpatterns = format_suffix_patterns([
    url(r'^$', api_root),
    url(r'^rules/$', rules_list, name='rules-list'),
    url(r'^rules/(?P<pk>[0-9]+)/$', rules_detail, name='rules-detail'),
    url(r'^role/$', role_list, name='role-list'),
    url(r'^role/(?P<pk>[0-9]+)/$', role_detail, name='role-detail'),
    url(r'^companydata/$', companydata_list, name='companydata-list'),
    url(r'^companydata/(?P<pk>[0-9]+)/$', companydata_detail, name='companydata-detail'),
])