ActiveAdmin.register OrdersService do
  menu label: '订单服务'
  permit_params :order_id, :service_id
end
