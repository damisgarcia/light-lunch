---
layout: default
---
<div class="singin-form" ng-if="!app.user">
  <button class="btn btn-danger btn-lg btn-block" ng-click="app.singin.google($event)">Sign with Google</button>
</div>
