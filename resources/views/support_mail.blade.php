<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(10) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(10,["{{from_name}","{{from_email}}","{{support_subject}}","{{support_msg}}","{{item_url}}"],["$from_name","$from_email","$support_subject","$support_msg","$item_url"])) @endphp
</body>
</html>