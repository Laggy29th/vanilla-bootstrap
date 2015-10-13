<!DOCTYPE html>
<html lang="{$CurrentLocale.Lang}" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {asset name="Head"}
  </head>
  <body id="{$BodyID}" class="{$BodyClass} sticky-footer-body">
    <nav class="navbar navbar-inverse navbar-static-top clearfix" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">{t c="Toggle navigation"}</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{link path="home"}">{logo}</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Forums <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                {categories_link}
                {discussions_link}
                {activity_link}
                {custom_menu}
                </ul>
            </li>
            
            <li class="active dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Personnel<span class="caret"></span></a>
                 <ul class="dropdown-menu" role="menu">
                 <li><a href="http://personnel.29th.org/" class="">Roster</a></li>
                 <li><a href="http://personnel.29th.org/#calendar" class="">Calendar</a></li>
                 <li><a href="http://personnel.29th.org/#enlistments" class="">Enlistments</a></li>
                 <li><a href="http://personnel.29th.org/#eloas" class="">Extended LOAs</a></li>
                 <li><a href="http://personnel.29th.org/#finances" class="">Finances</a></li>
                 <li><a href="http://personnel.29th.org/#recruits" class="">Recruits</a></li>
                 </ul>
             </li>    
            
            <li><a href="http://29th.org/wiki">Wiki</a></li>
          </ul>
          {if $User.SignedIn}
            <ul class="nav navbar-nav navbar-right hidden-xs">
              {module name="MeModule"}
            </ul>
            <ul class="nav navbar-nav navbar-right visible-xs">
              {profile_link}
              {inbox_link}
              {bookmarks_link}
              {dashboard_link}
              {signinout_link}
            </ul>
          {else}
            <ul class="nav navbar-nav navbar-right">
              {signin_link}
            </ul>
          {/if}
        </div>
      </div>
    </nav>

    <section class="container">
      <div class="row">
        <main class="page-content" role="main">
          {breadcrumbs}
          {if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList"))}
            <div class="well search-form">{searchbox}</div>
          {/if}
          {asset name="Content"}
        </main>

        <aside class="page-sidebar" role="complementary">
          {asset name="Panel"}
        </aside>
      </div>
    </section>

    <div class="page-footer">
      <div class="container">
        <div class="clearfix">
          <p class="pull-left">{t c="Copyright"} &copy; {$smarty.now|date_format:"%Y"} <a href="{link path="home"}">{logo}</a></p>
          <p class="pull-right hidden-xs">{t c="Built with"} <i class="InformSprite Heart"></i> {t c="and"} <a href="http://getbootstrap.com">Bootstrap</a>. {t c="Powered by"} <a href="{vanillaurl}">Vanilla Forums</a>
            <!-- A lot of time was put into this project - a "Follow" and a "Star" would be most appreciated! -->
            <iframe src="https://ghbtns.com/github-btn.html?user=kasperisager&type=follow" allowtransparency="true" frameborder="0" scrolling="0" width="145" height="20" style="vertical-align:top;margin-left:20px;"></iframe>
            <iframe src="https://ghbtns.com/github-btn.html?user=kasperisager&repo=vanilla-bootstrap&type=star&count=true" allowtransparency="true" frameborder="0" scrolling="0" width="85" height="20" style="vertical-align:top;"></iframe>
          </p>
        </div>
        {asset name="Foot"}
      </div>
    </div>

    {event name="AfterBody"}
  </body>
</html>
