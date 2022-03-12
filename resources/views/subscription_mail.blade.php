<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(20) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(20,["{{user_subscr_type}}","{{subscr_duration}}","{{subscr_price}}", "{{currency}}", "{{user_subscr_date}}"],["$user_subscr_type","$subscr_duration","$subscr_price", "$currency", "$user_subscr_date"])) @endphp
</body>
</html>