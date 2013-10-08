<!-- begin menubar_identification -->
<div class="well">
<h4>{'Menu'|@translate}</h4>
{if isset($block->data.qsearch) and  $block->data.qsearch==true}
	<form action="{$ROOT_URL}qsearch.php" method="get" id="quicksearch">
  <div class="input-group">
    <input type="text" class="form-control" name="q" id="qsearchInput" placeholder="Quick Search">
    <span class="input-group-btn">
    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
    </span>
  </div><!-- /input-group -->
	</form>
{/if}
  <ul class="nav nav-pills nav-stacked">
  {foreach from=$block->data item=link}
    {if is_array($link)}
	    <li><a href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>{$link.NAME}</a></li>
    {/if}
  {/foreach}
  </ul>
</div>
<!-- end menubar_identification -->
