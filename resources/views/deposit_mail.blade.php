<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(19) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(19,["{{amount}}","{{currency}}","{{payment_type}}", "{{payment_token}}", "{{payment_date}}"],["$amount","$currency","$payment_type", "$payment_token", "$payment_date"])) @endphp
</body>
</html>