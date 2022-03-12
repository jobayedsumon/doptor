<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(13) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(13,["{{total_price}}","{{currency}}"],["$total_price","$currency"])) @endphp
</body>
</html>