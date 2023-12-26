#  Welcome to N-ARIA
When development teams interact regaring users they frequently miscommunicate. This has a negative
impact on Assistive Technology users as their concerns generally are not tested for as thoroughly,
or by users who don't understand the capabilities of the platform. N-ARIA aims to clarify those
user experience expectations by providing:

1. A behavioral public API friendly to those who are less familiar with iOS.
2. Documentation of Assistive Technology semantics and acceptable alternatives.
3. Documentation of anti-patterns MobA11y discovers throughout the ecosystem.

By providing this information for free MobA11y hopes to equip development teams with the information
they need to communicate clearly. 

## Why N-ARIA? 
ARIA stands for Accessibility Rich Internet Applications. It is a set of roles and attributes that
accessibility experts frequently refer to when talking about user behaviors. However, those words
don't always mean the same thing for Native Platforms. 

> We have seen more than one well intentioned engineer do exactly what an Accessibility Expert
> asked them while reaching a disastrously inaccessible result! :)

Native ARIA, N-ARIA, aims to fill this gap in a meaningful way for development teams by leveraging 
a recognized grammar, behavioral demos, and freely available implementation details you can easily
pass with a link.

## Code Organization
N-ARIA is very intentionally organized to create clear documentation for the N-ARIA documentation
engine. We do our best to keep our files short and split code very intentionally across semantics
and everything else. This allows N-ARIA patterns to clearly document the portions of SwiftUI that
matter behaviorally. 

In general this organization looks like this:

- Types
- Components
- Styles
- Modifiers
- Experiences
  
### Types
Types represent common data formats that have a general expectation of being consistent across 
organizations and ecosystems. When applicable we will pull common fields from documented standards.

Supported Types

1. Contact

### Components
Components represent unique user experiences that have the expectation of coming along with similar
user experiences, including assistive technology experiences. Because of this component names all
start with NAria. This helps the purpose of this app as documentation. There is no need to discuss 
or link to our Styles or Modifiers. We are not design experts. We are assistive technology experts. 

Supported Components

- NAriaContactCard
- NAriaContactProfile
- NAriaCTA
- NAriaIcon
- NAriaList
- NAriaListIcon
- NAriaNav
- NAriaNavItem
- NAriaProfileIcon
- NAriaSection
- NAriaSheet
- NAriaTextField

### Experiences
Experiences represent a combination of components that frequently work together. When these 
experiences are built specifically to pair with a type name will always be NAriaType. 

Supported Experiences

- NAriaContact
- NAriaMasterDetail


## License: [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
MobA11y's intent is to provide this as a free eductional resource while discouraging commercial
use. We hope thatyou will:

- Provice feedback on LinkedIn [@MobA11y](https://www.linkedin.com/company/moba11y).
- Contribute your ideas for improvements.
- [Post an Issue](https://github.com/MobA11y/n-aria-ios/issues/new) when you need help.

"I discovered that the wisdom of the world, and a great deal of its folly also, is to be found in 
the pages of books. And." - CS Lewis

