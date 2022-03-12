<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(17) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(17,["{{wd_amount}}","{{currency}}"],["$wd_amount","$currency"])) @endphp
</body>
</html>