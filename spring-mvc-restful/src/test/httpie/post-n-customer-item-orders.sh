#!/bin/bash

http POST localhost:8080/api/customers/1/orders/batch < customer-item-orders/n-johnsnow-orders.json
http POST localhost:8080/api/customers/6/orders/batch < customer-item-orders/n-aryastark-orders.json
http POST localhost:8080/api/customers/12/orders/batch < customer-item-orders/n-barristanselmy-orders.json

