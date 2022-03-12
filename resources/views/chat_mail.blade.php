<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(1) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(1,["{{from_name}}","{{from_email}}","{{conver_text}}","{{conversation_url}}"],["$from_name","$from_email","$conver_text","$conversation_url"])) @endphp
</body>
</html>