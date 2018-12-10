ActiveAdmin.register OrdersProduct do
  menu label: '订单产品'
  permit_params :order_id, :product_id
end
