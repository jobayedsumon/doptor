<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(14) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(14,["{{item_name}}"],["$item_name"])) @endphp
</body>
</html>