# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Article(models.Model):
    id = models.AutoField(db_column='articeID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID', blank=True, null=True)  # Field name made lowercase.
    date = models.DateField(blank=True, null=True)
    title = models.CharField(max_length=128)
    body = models.TextField()

    class Meta:
        managed = False
        db_table = 'article'


class Attachment(models.Model):
    id = models.AutoField(db_column='attachmentID', primary_key=True)  # Field name made lowercase.
    productid = models.ForeignKey('Product', models.DO_NOTHING, db_column='productID')  # Field name made lowercase.
    name = models.CharField(max_length=255)
    path = models.CharField(max_length=255)
    extension = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'attachment'


class CompanyData(models.Model):
    id = models.AutoField(db_column='company_dataID', primary_key=True)  # Field name made lowercase.
    content = models.TextField()

    class Meta:
        managed = False
        db_table = 'company_data'


class CompanyFeedback(models.Model):
    id = models.AutoField(db_column='feedbackID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID', blank=True, null=True)  # Field name made lowercase.
    rate = models.IntegerField()
    description = models.TextField()

    class Meta:
        managed = False
        db_table = 'company_feedback'


class Order(models.Model):
    id = models.AutoField(db_column='orderID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    stateid = models.ForeignKey('OrderState', models.DO_NOTHING, db_column='stateID')  # Field name made lowercase.
    date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'order_'


class OrderProduct(models.Model):
    orderid = models.ForeignKey(Order, models.DO_NOTHING, db_column='orderID')  # Field name made lowercase.
    productid = models.ForeignKey('Product', models.DO_NOTHING, db_column='productID')  # Field name made lowercase.
    amount = models.IntegerField()
    price = models.FloatField()

    class Meta:
        managed = False
        db_table = 'order_product'
        unique_together = (('orderid', 'productid'),)


class OrderState(models.Model):
    id = models.AutoField(db_column='stateID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(max_length=32)
    description = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'order_state'


class Product(models.Model):
    id = models.AutoField(db_column='productID', primary_key=True)  # Field name made lowercase.
    categoryid = models.ForeignKey('ProductCategory', models.DO_NOTHING, db_column='categoryID')  # Field name made lowercase.
    name = models.CharField(max_length=128)
    enabled = models.BooleanField()
    description = models.TextField()
    price = models.FloatField()

    def get_attachments(self):
        attachments = Attachment.objects.filter(productid=self.id)
        return attachments

    class Meta:
        managed = False
        db_table = 'product'


class ProductCategory(models.Model):
    id = models.AutoField(db_column='categoryID', primary_key=True)  # Field name made lowercase.
    parentid = models.ForeignKey('self', models.DO_NOTHING, db_column='parentID', blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(max_length=32)
    description = models.CharField(max_length=255)
    enabled = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'product_category'


class ProductFeedback(models.Model):
    id = models.AutoField(db_column='feedbackID', primary_key=True)  # Field name made lowercase.
    productid = models.ForeignKey(Product, models.DO_NOTHING, db_column='productID')  # Field name made lowercase.
    parentid = models.ForeignKey('self', models.DO_NOTHING, db_column='parentID', blank=True, null=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    description = models.TextField()

    class Meta:
        managed = False
        db_table = 'product_feedback'


class ProductRate(models.Model):
    id = models.AutoField(db_column='rateID', primary_key=True)  # Field name made lowercase.
    productid = models.ForeignKey(Product, models.DO_NOTHING, db_column='productID')  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'product_rate'


class Report(models.Model):
    reportid = models.AutoField(db_column='reportID', primary_key=True)  # Field name made lowercase.
    datefrom = models.DateField(db_column='dateFrom')  # Field name made lowercase.
    dateto = models.DateField(db_column='dateTo')  # Field name made lowercase.
    value = models.FloatField()

    class Meta:
        managed = False
        db_table = 'report'


class Role(models.Model):
    id = models.AutoField(db_column='roleID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(max_length=32)

    class Meta:
        managed = False
        db_table = 'role'


class Rules(models.Model):
    id = models.AutoField(db_column='rulesID', primary_key=True)  # Field name made lowercase.
    content = models.TextField()

    class Meta:
        managed = False
        db_table = 'rules'


class User(models.Model):
    id = models.AutoField(db_column='userID', primary_key=True)  # Field name made lowercase.
    email = models.CharField(max_length=32)
    firstName = models.CharField(db_column='name', max_length=32)
    lastName = models.CharField(db_column='surname', max_length=32)
    password = models.CharField(max_length=32)
    enabled = models.BooleanField()
    roles = models.ManyToManyField(Role, through='UserRole')

    class Meta:
        managed = False
        db_table = 'user'


class UserRole(models.Model):
    userid = models.ForeignKey(User, models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    roleid = models.ForeignKey(Role, models.DO_NOTHING, db_column='roleID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user_role'
        unique_together = (('userid', 'roleid'),)
