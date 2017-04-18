name             'fh-dataman'
maintainer       'FeedHenry'
maintainer_email 'support@feedhenry.com'
license          'All rights reserved'
description      'Installs/Configures fh-dataman'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

supports 'ubuntu'

depends 'feedhenry_common'
depends 'feedhenry_utils'
depends 'fh-artifact'
depends 'nodejs_feedhenry'

recipe 'fh-dataman::artifact', ''
recipe 'fh-dataman::conf', ''
recipe 'fh-dataman::default', ''
recipe 'fh-dataman::source', ''
