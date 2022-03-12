<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ Helper::Email_Subject(16) }}</title>
</head>
<body class="preload dashboard-upload">
@php echo html_entity_decode(Helper::Email_Content(16,["{{news_heading}}","{{news_content}}"],["$news_heading","$news_content"])) @endphp
</body>
</html>