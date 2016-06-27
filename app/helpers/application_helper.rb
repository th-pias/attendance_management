module ApplicationHelper
  def in_out_visualization(attendances)
    if attendances.present?
        if attendances.first.outtime.present?
         link_to 'In', attendances_path, method: :post, class:'btn btn-success'
        else
            link_to 'Out', attendance_path(id: attendances.first.id), method: :put, class:'btn btn-danger'
        end
    else
        link_to 'In', attendances_path, method: :post, class:'btn btn-success'
  end
  end
end
