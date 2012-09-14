module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def user_admin

  	if(user_signed_in)
      case User.find(current_user).user_type
        
        when "Volunteer"
          return true
        when "Instructor"
          return true
        when "Admin"
          return false
        else
          return false
      end
    else
      return false
    end

  end


end