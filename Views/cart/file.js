
function increaseQuantity(obj, productId) {
  // Thực hiện yêu cầu AJAX để tăng số lượng sản phẩm trong giỏ hàng
  $.ajax({
    url: '?act=cart&xuli=update&id=' + productId,
    type: 'get',
    dataType: 'json',
    success: function(data) {
      // Cập nhật số lượng sản phẩm và tổng giá trị đơn hàng trên giao diện người dùng
      $(obj).siblings('.plus-minus-box').text(data.SoLuong);
      $('.cart-total').text(data.TongTien);
    }
  });
}

function decreaseQuantity(obj, productId) {
  // Thực hiện yêu cầu AJAX để giảm số lượng sản phẩm trong giỏ hàng
  $.ajax({
    url: '?act=cart&xuli=delete&id=' + productId,
    type: 'get',
    dataType: 'json',
    success: function(data) {
      // Cập nhật số lượng sản phẩm và tổng giá trị đơn hàng trên giao diện người dùng
      if (data.SoLuong == 0) {
        // Nếu sản phẩm đã "hết hàng", loại bỏ sản phẩm khỏi giỏ hàng
        $(obj).closest('.cart-item').remove();
      } else {
        $(obj).siblings('.plus-minus-box').text(data.SoLuong);
      }
      $('.cart-total').text(data.TongTien);
    }
  });
}
