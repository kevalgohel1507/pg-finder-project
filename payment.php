<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Card Payment</title>
</head>
<body>
<div class="container">
    <h2>Confirm Your Details</h2>
    <table>
        <tr>
            <td><strong>Booking ID:</strong></td>
            <td><?php echo $_GET['bknum']; ?></td>
        </tr>
        <tr>
            <td><strong>PG Name:</strong></td>
            <td><?php echo $_GET['productinfo']; ?></td>
        </tr>
        <tr>
            <td><strong>Rented By:</strong></td>
            <td><?php echo $_GET['username']; ?></td>
        </tr>
        <tr>
            <td><strong>Payment Fees:</strong></td>
            <td><?php echo $_GET['pay']; ?></td>
        </tr>
    </table>
    <form action="process_payment.php" method="post">
        <input type="hidden" name="bookingId" value="<?php echo $_GET['bknum']; ?>">
        <input type="hidden" name="pgName" value="<?php echo $_GET['productinfo']; ?>">
        <input type="hidden" name="rentedBy" value="<?php echo $_GET['username']; ?>">
        <input type="hidden" name="paymentFees" value="<?php echo $_GET['pay']; ?>">
        
        <!-- Add fields for card details (card number, expiry date, CVV, etc.) here -->
        <!-- For simplicity, let's assume card number, expiry date, and CVV -->
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" required><br>
        
        <label for="expiryDate">Expiry Date:</label>
        <input type="text" id="expiryDate" name="expiryDate" required><br>
        
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required><br>
        
        <button type="submit">Proceed to Payment</button>
    </form>
</div>
</body>
</html>
