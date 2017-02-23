ActiveAdmin.register Artist do
  permit_params :name, :summary, :image_name, :website, :youtube,
                :itunes, :soundcloud, :facebook, :twitter, :instagram
end
