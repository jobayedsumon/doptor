<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(18) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(18,["{{vendor_amount}}","{{currency}}"],["$vendor_amount","$currency"])) @endphp
</body>
</html>