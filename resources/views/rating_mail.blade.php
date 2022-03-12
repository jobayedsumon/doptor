<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(7) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(7,["{{from_name}","{{from_email}}","{{rating}}","{{rating_reason}}","{{rating_comment}}","{{item_url}}"],["$from_name","$from_email","$rating","$rating_reason","$rating_comment","$item_url"])) @endphp
</body>
</html>