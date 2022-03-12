<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(8) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(8,["{{from_name}","{{from_email}}","{{ref_refund_reason}}","{{ref_refund_comment}}","{{item_url}}"],["$from_name","$from_email","$ref_refund_reason","$ref_refund_comment","$item_url"])) @endphp
</body>
</html>