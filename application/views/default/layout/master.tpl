<!DOCTYPE html>
<html lang="en">
<head>
    {include 'default/blocks/head.tpl'}
    {block name=extracss}{/block}
</head>
<body>

<div class="loader">
    <div class="loader_html"></div>
</div>
<div id="wrap" class="grid_1200">
    <div class="wrap-search">
        <form method="post">
            <input type="search" name="s" value="Search here ..."
                   onfocus="if(this.value==this.defaultValue)this.value='';"
                   onblur="if(this.value=='')this.value=this.defaultValue;">
        </form>
    </div>

    {include 'default/blocks/header.tpl'}

    {block name=content}{/block}

    {include 'default/blocks/footer.tpl'}
</div>

<div class="go-up"><i class="fa fa-chevron-up"></i></div>





{include 'default/blocks/scripts.tpl'}

{block name=extrajs}{/block}
</body>
</html>