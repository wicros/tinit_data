ActiveAdmin.register Order do
  menu label: '订单',  priority: 4
  permit_params :user_id, :baber_id, :pay_type_id, :arrival_type_id, :happened_at
end
