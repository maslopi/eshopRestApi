from django.conf.urls import url
from rest_framework.urlpatterns import format_suffix_patterns
from eshopRest import views
from eshopRest.views import RulesViewSet, RoleViewSet, CompanyDataViewSet, api_root
from eshopRest.views import AttachmentViewSet
from eshopRest.views import ProductViewSet
from eshopRest.views import ProductCategoryViewSet
from eshopRest.views import ArticleViewSet
from eshopRest.views import CompanyFeedbackViewSet
from eshopRest.views import ProductFeedbackViewSet
from eshopRest.views import ProductRateViewSet
from eshopRest.views import UserViewSet
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

attachment_list = AttachmentViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
attachment_detail = AttachmentViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

product_list = ProductViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
product_detail = ProductViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

productcategory_list = ProductCategoryViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
productcategory_detail = ProductCategoryViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

article_list = ArticleViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
article_detail = ArticleViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

companyfeedback_list = CompanyFeedbackViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
companyfeedback_detail = CompanyFeedbackViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

productfeedback_list = ProductFeedbackViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
productfeedback_detail = ProductFeedbackViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

productrate_list = ProductRateViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
productrate_detail = ProductRateViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy'
})

user_list = UserViewSet.as_view({
    'get': 'list',
    'post': 'create'
})
user_detail = UserViewSet.as_view({
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
    url(r'attachment/$', attachment_list, name='attachment-list'),
    url(r'attachment/(?P<pk>[0-9]+)/$', attachment_detail, name='attachment-detail'),
    url(r'product/$', product_list, name='product-list'),
    url(r'product/(?P<pk>[0-9]+)/$', product_detail, name='product-detail'),
    url(r'productcategory/$', productcategory_list, name='productcategory-list'),
    url(r'productcategory/(?P<pk>[0-9]+)/$', productcategory_detail, name='productcategory-detail'),
    url(r'article/$', article_list, name='article-list'),
    url(r'article/(?P<pk>[0-9]+)/$', article_detail, name='article-detail'),
    url(r'companyfeedback/$', companyfeedback_list, name='companyfeedback-list'),
    url(r'companyfeedback/(?P<pk>[0-9]+)/$', companyfeedback_detail, name='companyfeedback-detail'),
    url(r'productfeedback/$', productfeedback_list, name='productfeedback-list'),
    url(r'productfeedback/(?P<pk>[0-9]+)/$', productfeedback_detail, name='productfeedback-detail'),
    url(r'productrate/$', productrate_list, name='productrate-list'),
    url(r'productrate/(?P<pk>[0-9]+)/$', productrate_detail, name='productrate-detail'),
    url(r'user/$', user_list, name='user-list'),
    url(r'user/(?P<pk>[0-9]+)/$', user_detail, name='user-detail')
])