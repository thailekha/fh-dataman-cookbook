name             'fh-appstore'
maintainer       'FeedHenry'
maintainer_email 'support@feedhenry.com'
license          'All rights reserved'
description      'Installs/Configures fh-appstore'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.32.0'

supports 'ubuntu'

depends 'feedhenry_common'
depends 'feedhenry_utils'
depends 'fh-artifact'
depends 'nodejs_feedhenry'

recipe 'fh-appstore::artifact', ''
recipe 'fh-appstore::conf', ''
recipe 'fh-appstore::default', ''
recipe 'fh-appstore::source', ''
