$(function(){


var h_id = '';
$(".select_restocking_item_block select.house").change(function(){
    var house_id = $(this).find('option:selected').data('value');
    var item_block = $(this).closest('.select_restocking_item_block').find('.select_item');
    if(house_id!=0 && house_id!=h_id){
        $.ajax({
            url: "ajax/get_restocking_items.php",
            data: {
                house_id: house_id
            },
            dataType: 'json',
            type: 'POST',
            success: function(data){
                var options = '<option>--- Select ---</option>';;
                for(i=0; i<data.length; i++){
                    item = data[i];
                    options += '<option>'+item.name+'</option>';
                }
                item_block.html(options);
            }
        });
        h_id = house_id;
    }
});


$('.select_restocking_item_block .add').click(function(){
    var new_bx = $(".select_restocking_item > .wrapper:last").clone(false);
    var n = parseInt(new_bx.data('n'))+1;
    new_bx.attr('data-n', n);
    new_bx.find('select.select_item').attr('name', 'name[v'+n+']');
    new_bx.find('input.amount').attr('name', 'value[v'+n+']');

    new_bx.clone(false).appendTo('.select_restocking_item').fadeIn('slow').find('.amount').val('');
    return false;       
});

$('.select_restocking_item .del').live('click', function(){
    $(this).closest(".wrapper").fadeOut(200, function() { $(this).remove(); });
});



});