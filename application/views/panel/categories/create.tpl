{extends 'panel/layout/master2.tpl'}

{block name=content}
    <section id="container">
        <section id="main-content">
            <section class="wrapper" style="min-height:545px">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 alert alert-info text-center"><strong>KATEGORİ EKLE</strong></div>
                </div>
                {if isset($errorMessage)}
                    <div class="alert alert-danger">{$errorMessage}</div>
                {/if}
                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Kategori Ekle
                            </header>
                            <div class="panel-body">
                                <form class="form-horizontal" id="default" action="{base_url('panel/category/store')}" method="post">
                                    <input type="hidden" name="csrf_base" value="{$csrf_token}">
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Kategori: </label>
                                        <div class="col-lg-10">
                                            <input type="text" name="title" class="form-control"
                                                   value="{if isset($input_old)}{$input_old['title']}{else}{set_value('title')}{/if}"
                                                   required>
                                        </div>
                                    </div>

                                    <input type="submit" class="finish btn btn-danger" value="Kaydet"/>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </section>
{/block}

{block name=extrajs}
    <script src="{base_url('assets/panel/js/jquery-1.8.3.min.js')}"></script>
    <script src="{base_url('assets/panel/js/bootstrap.min.js')}"></script>
    <script class="include" type="text/javascript"
            src="{base_url('assets/panel/js/jquery.dcjqaccordion.2.7.js')}"></script>
    <script src="{base_url('assets/panel/js/jquery.scrollTo.min.js')}"></script>
    <script src="{base_url('assets/panel/js/jquery.nicescroll.js')}" type="text/javascript"></script>
    <script src="{base_url('assets/panel/js/common-scripts.js')}"></script>
{/block}