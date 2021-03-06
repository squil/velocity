$(function(){
  $.fn.draggableGroup = function(){
    $(this).draggable({revertDuration: 300, revert: 'invalid', helper: 'clone', zIndex: 5000});
  }

  $.fn.droppableTask = function(){
    $(this).droppable({
      hoverClass: 'drop_here',
      drop: function(event, ui) {
        $.put('/tasks/' + $(this).attr('id').substr(5), {group_id: ui.draggable.attr('class')});
      }
    });
  }

  $(".group").draggableGroup();
  $(".task").droppableTask();
})

