<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(6) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(6,["{{activate_url}"],["$activate_url"])) @endphp
</body>
</html>