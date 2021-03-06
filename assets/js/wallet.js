$(function() {

    var owner = $('#owner');
    var cardNumber = $('#cardNumber');
    var cardNumberField = $('#card-number-field');
    var amount = $('amount');
    var CVV = $("#cvv");
    var mastercard = $("#mastercard");
    var confirmButton = $('#confirm-purchase');
    var visa = $("#visa");
    var amex = $("#amex");

    // Use the payform library to format and validate
    // the payment fields.

    cardNumber.payform('formatCardNumber');
    CVV.payform('formatCardCVC');


    cardNumber.keyup(function() {

        amex.removeClass('transparent');
        visa.removeClass('transparent');
        mastercard.removeClass('transparent');

        if ($.payform.validateCardNumber(cardNumber.val()) == false) {
            cardNumberField.addClass('has-error');
        } else {
            cardNumberField.removeClass('has-error');
            cardNumberField.addClass('has-success');
        }

        if ($.payform.parseCardType(cardNumber.val()) == 'visa') {
            mastercard.addClass('transparent');
            amex.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'amex') {
            mastercard.addClass('transparent');
            visa.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'mastercard') {
            amex.addClass('transparent');
            visa.addClass('transparent');
        }
    });

    confirmButton.click(function(e) {

        e.preventDefault();

        var isCardValid = $.payform.validateCardNumber(cardNumber.val());
        var isCvvValid = $.payform.validateCardCVC(CVV.val());

        if(owner.val().length < 5){
            	makeToast("Wrong name info. Try again","danger","info");
        } else if (!isCardValid) {
            	makeToast("Wrong card number","danger","info");
        } else if (!isCvvValid) {
           	makeToast("Wrong CVV","danger","info"); 
        } else {
            // Everything is correct. Add your form submission code here.
           // alert("Everything is correct");
           //alert(amount);
            hello();
        
                        }
    });
});





function hello(){
var amount = $("#amount").val();

$(document).ready(function(){
    $("#loader").css("display","block")
   
$.post( "../controllers/payment.api.php", { amount: amount }, function( text ) {
        $("#loader").css("display","none")
          if(text == 1){
             makeToast("Transaction made successfully","green","success");
             $('#transactionForm')[0].reset();
         }else{
             makeToast("Oops an error occured. Try again","danger","info");
         }
});



})
    
}










 $(document).ready(function() {
                $('#datatable').DataTable();
            } );

// $(document).on("submit","#transactionForm",function(ev){
// 	ev.preventDefault();
	// $("#loader").css("display","block")
	// var data = $(this).serialize();
	// $.ajax({
	// 	url: "../controllers/payment.api.php",
	// 	type: "POST",
	// 	data:data,
	// 	success:function(text){

	// $("#loader").css("display","none")
	// 		if(text == 1){
	// 			makeToast("Transaction made successfully","green","check");
	// 			$('#transactionForm')[0].reset();
	// 		}else{
	// 			makeToast("Oops an error occured. Try again","danger","info");
	// 		}
	// 	}
	// })
//})



