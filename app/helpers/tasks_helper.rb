module TasksHelper
  def render_hidden_task(task)
    "$('#{escape_javascript(render(task))}').hide()"
  end

  def current_tasks_heading
    "Tasks for the current release"
  end

  def future_tasks_heading
    "Tasks for a future release (#{@future_tasks.size})"
  end

  def task_submit_button(f, task)
    disabled = task.story.blank? && ['feature', 'refactor'].include?(task.category) && task.action != 'mark valid'
    f.submit(task.action, :id => "task_#{task.id}_submit", :disabled => disabled)
  end
  
  def display_velocity(velocity)
    display = velocity < 1 ? 'less than one' : velocity.round
    display += ' (features per week)'
  end
end

