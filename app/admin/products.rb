ActiveAdmin.register Product do
  menu label: '产品',  priority: 3
  permit_params :name, :price, :cost, :quantity
end
