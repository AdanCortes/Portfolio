=====================
Dulcería El Desconton
=====================

.. image:: /docs/img/logo.png
  :width: 250px
	   
***Para tu antojo, negocio o fiestón***

Odoo v12.0, v14.0 and v16.0 customizations for a medium-sized candy distributor having wholesale and retail stores.

Production site available on https://dulceriaeldesconton.mx/

Main features
=============

Prices, Promotions and Payment Terms:
"""""""""""""""""""""""""""""""""""""

* Promotions are available both on backend and Point of Sale (v12.0 customization)

  * Multiple types of rewards, such as:

    * Discount in total amount ($5 off)
    * Discount in percentage (5% off)
    * Pay a fixed price (Pay $1)
    * Get a free product (2x1, buy 1 get 1)

  * Multiple conditions, such as:

    * Amount with / without taxes
    * Quantity
    * Product variant / category
    * Date
    * Price list
    * Warehouse / Store    
  
* Credit limit for selected customers (v12.0 customization)
* Create a credit note for selected customers when they pay their bills early (v12.0 customization)
* Add penalties to outstanding invoices

Website:
""""""""

* Complete design
* Ecommerce
* Added functionality
  
  * Select products by category
  * Product search
  * Change pricelist depending on the payment method

* Shopping Cart
  
  * Buttons to change quantities in multiples of the box quantity (unit of purchase)
  
* Client's Portal to access his quotations, sale orders, and invoices.

Point of Sale (PoS):
""""""""""""""""""""

* Multiple units of measure (UoM)
  
  * Defaults to purchase UoM on wholesale PoS and sale UoM on retail PoS.
    
* Hide controls for a cleaner display
* Honors promotions
* Product display in list or tile mode
* High resolution product image magnification
* Can convert PoS Order to Sale Order, including notes (customization)
* Keyboard shortcuts (v12.0 customization)
* User privileges for (v16.0 customization)
  
  * Session closing
  * Money withdrawal
  * Sales on Credit
  
Ticket:
"""""""

* Prints coupons to claim unclaimed free products (customization)
* Items and boxes count
* Print promissory note along with the ticket for sales on credit
  
Backend:
""""""""

* Split Sale Orders in two: One of them containing only wholesale items (those that are sold by Purchase Unit of Measure). (customization)
* Enable barcode in picking operations
* Alphabetically sort Sale Order and Stock Picking lines.
* Extra discount in cash purchases for selected clients
* Convey little messages from PoS to Sale Order and from Sale Order to Stock Picking
* Connector to WinCaja (customization)
* Refined access control
* 2-step validation of payment collection
* Mexican localization of taxes (customization)
* CFDI v3.3 Mexican Digital Invoice (customization) 

Images
======

Website:
""""""""

Main page

.. image:: /docs/img/website_main.png
  :width: 640px

Product-listing page. Here products can be searched by keyword or filtered by category. Also, price lists change along with the payment method. 

.. image:: /docs/img/website_product_listing.png
  :width: 640px

Single-product page

.. image:: /docs/img/website_product_page.png
  :width: 640px

Cart

.. image:: /docs/img/website_cart_sq.png
  :width: 640px

Below the standard +/- quantity buttons, there are other +/- that change the quantity by the box (taken from the product's unit of purchase).

.. image:: /docs/img/website_cart_detail.png
  :width: 640px

Client's portal

.. image:: /docs/img/portal_quotations.png
  :width: 640px

.. image:: /docs/img/portal_sale_orders.png
  :width: 640px

  * Buttons to change quantities in multiples of the box quantity (unit of purchase)
  
* Client's Portal to access his quotations, sale orders, and invoices.

Point of Sale (PoS):
""""""""""""""""""""

Products can be listed in either tiles or list 

.. image:: /docs/img/pos_main.png
  :width: 640px

.. image:: /docs/img/pos_main_list_view.png
  :width: 640px

Product image magnification
	  
.. image:: /docs/img/pos_magnify.png
  :width: 640px

Controls can be hidden for a cleaner display. Both promotions and rewards are shown as soon as the conditions are met.

.. image:: /docs/img/pos_loyalty_02.png
  :width: 640px

If there are unclaimed free products, a coupon is printed on the ticket.
	  
.. image:: /docs/img/pos_loyalty_ticket_coupon.png
  :width: 640px

Dependencies
============

This project depends on the following original modules.

Promotions module
-----------------

This module provides the functionality necessary to support sale incentives, from simple discounts in a fixed amount ($5 off) or in percentaje (5% off) to more elaborated offers such as: Buy one and get one free; or Buy one, and get 50% off the second.  

Its functionality is similar to the ``loyalty``, ``sale_loyalty`` and ``pos_loyalty`` modules, only those modules appeared in v16.0 and this was developed since v12.0.

A promotion record is usually linked to one or more conditions and to one or more rewards, and all conditions must be met in order to trigger the reward.

Conditions can include one or more of the following:
    * Amount with / without taxes
    * Quantity
    * Product variant / category
    * Date
    * Price list
    * Warehouse / Store    

While rewards can be of the following types:
    * Discount in total amount ($5 off)
    * Discount in percentage (5% off)
    * Pay a fixed price (Pay $1)
    * Get a free product (2x1, buy 1 get 1)

Set-up
""""""

Let's see how a BoGo offer is set up: Buy $500 in products belonging to the Adam's category and get one pack of Trident Strong, the offer is valid through all sales channels, meaning retail stores (using Point of Sale) as well as backend Sale Orders.

.. image:: /docs/img/promotions_new_bogo.png
  :width: 640px


.. image:: /docs/img/promotions_new_condition_bogo.png
  :width: 640px

.. image:: /docs/img/promotions_new_reward_bogo.png
  :width: 640px


l10n_mx_sat module
==================

This module replaces the standard ``l10n_mx`` module. Adding the complete mandatory account chart for Mexican entities, also implementing the generation of the Mexican electronic invoice known as Comprobante Fiscal Digital por Internet (better known as CFDI v3.3).
	  
