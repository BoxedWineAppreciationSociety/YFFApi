ActiveAdmin.register Performance do
  permit_params :artist_id, :stage, :time

  action_item :new do |a|
    link_to 'New', new_admin_performance_path
  end

  form do |f|
    f.inputs do
      f.input :artist, collection: Artist.order(name: :asc)
      f.input :stage
      f.input :time, as: :datetime_picker
    end
    f.actions
  end
end
