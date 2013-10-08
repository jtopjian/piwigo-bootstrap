<!-- begin menubar_categories.tpl -->
<div class="well">
	{if isset($U_START_FILTER)}
	  <a href="{$U_START_FILTER}" title="{'display only recently posted photos'|@translate}" rel="nofollow"><span class="glyphicon glyphicon-filter"></span></a>
	{/if}
	{if isset($U_STOP_FILTER)}
	  <a href="{$U_STOP_FILTER}" title="{'return to the display of all photos'|@translate}"><span class="glyphicon glyphicon-filter"></span></a>
	{/if}
	<h4><a href="{$block->data.U_CATEGORIES}">{'Albums'|@translate}</a></h4>
{assign var='ref_level' value=0}
{foreach from=$block->data.MENU_CATEGORIES item=cat}
  {if $cat.LEVEL > $ref_level}
    <ul class="nav nav-pills nav-stacked">
  {else}
    </li>
    {'</ul></li>'|@str_repeat:$ref_level-$cat.LEVEL}
  {/if}
  <li class="{if $cat.SELECTED}active{/if}">
    <a  href="{$cat.URL}" {if $cat.IS_UPPERCAT}rel="up"{/if} title="{$cat.TITLE}">{$cat.NAME}
    {if $cat.count_images > 0}
      <span class="pull-right {if $cat.nb_images > 0}badge{/if}" title="{$cat.TITLE}">{$cat.count_images}</span>
    {/if}
    {if !empty($cat.icon_ts)}
      <span class="glyphicon glyphicon-asterisk" title="{$cat.icon_ts.TITLE}">
    {/if}
    </a>
  {assign var='ref_level' value=$cat.LEVEL}
{/foreach}
{'</li></ul>'|@str_repeat:$ref_level}

	<p><span class="label label-default">{$pwg->l10n_dec('%d photo', '%d photos', $block->data.NB_PICTURE)}</span></p>
</div>
<!-- end menubar_categories.tpl -->
