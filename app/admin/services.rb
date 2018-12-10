ActiveAdmin.register Service do
  menu label: '服务', priority: 2
  permit_params :name, :price, :cost
end
