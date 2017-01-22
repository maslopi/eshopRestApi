from django.conf.urls import url, include
from eshopRest import views
from rest_framework.routers import DefaultRouter

# Create a router and register our viewsets with it.
router = DefaultRouter()
router.register(r'rules', views.RulesViewSet)
router.register(r'role', views.RoleViewSet)
router.register(r'companydata', views.CompanyDataViewSet)
router.register(r'attachment', views.AttachmentViewSet)
router.register(r'product', views.ProductViewSet)
router.register(r'productcategory', views.ProductCategoryViewSet)
router.register(r'article', views.ArticleViewSet)
router.register(r'order', views.OrderViewSet)
router.register(r'companyfeedback', views.CompanyFeedbackViewSet)
router.register(r'productfeedback', views.ProductFeedbackViewSet)

# The API URLs are now determined automatically by the router.
# Additionally, we include the login URLs for the browsable API.
urlpatterns = [
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]