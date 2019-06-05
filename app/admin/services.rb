ActiveAdmin.register Service do
  menu label: '服务', priority: 3
  permit_params :name, :price, :cost
end
