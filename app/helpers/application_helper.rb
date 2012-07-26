module ApplicationHelper
  def body_class_name
    "#{controller.controller_name} #{controller.action_name}"
  end
end
