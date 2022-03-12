<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(2) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(2,["{{from_name}}","{{from_email}}","{{item_url}}","{{comm_text}}"],["$from_name","$from_email","$item_url","$comm_text"])) @endphp
</body>
</html>