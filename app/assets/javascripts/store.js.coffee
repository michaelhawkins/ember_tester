# http://emberjs.com/guides/models/using-the-store/

EmberTester.Store = DS.Store.extend
  # Override the default adapter with the `DS.ActiveModelAdapter` which
  # is built to work nicely with the ActiveModel::Serializers gem.
  adapter: '_ams'

  DS.RESTAdapter.reopen({
    namespace: "api/v1"
  })

  EmberTester.Store = DS.Store.extend({
    revision: 11,
    adapter: DS.RESTAdapter.create()
  })
