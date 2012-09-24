module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def print_location(tutoring_sesion)
    if !tutoring_sesion.location.nil?
      tutoring_sesion.location
    else
      "Location To Be Determined"
    end
  end

  def am_pm_hour_select(object, method, options = {}, html_options = {})
    select_options = [ ["6am", 6], ["7am", 7], ["8am", 8], ["9am", 9], ["10am", 10], ["11am", 11], ["12pm", 12], ["1pm", 13], ["2pm", 14], ["3pm", 15], ["4pm", 16], ["5pm", 17], ["6pm", 18], ["7pm", 19], ["8pm", 20], ["9pm", 21], ["10pm", 22], ["11pm", 23], ["12am", 24], ["1am", 1], ["2am", 2], ["3am", 3], ["4am",4 ], ["5am", 5]]
    unless options[:start].nil?
      shift_if_needed = Proc.new{|hour, start| hour<start ? hour+24 : hour}
      select_options.sort!{|x, y| shift_if_needed.call(x.last,options[:start]) <=> shift_if_needed.call(y.last, options[:start]) }
    end

    object.select(method, select_options, options = {}, html_options = {})
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