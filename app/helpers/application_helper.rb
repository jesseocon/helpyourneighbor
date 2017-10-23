module ApplicationHelper
  def active_link?(ctrl_name, ctrl_action)
    ctrl_name == controller.controller_name && ctrl_action == controller.action_name
  end
end
