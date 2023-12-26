#  Welcome to N-ARIA (BETA)
The Native ARIA (N-NARIA) Design System is built with one goal in mind... helping development teams communicate accurately about assistive technology users. 

When development teams have conversations about user experience they frequently miscommunicate. These miscommunications are particulalry damaging for users with disabilities as what makes a positive experience isn't commonly understood. Assistive Technology (AT) users rely on consistent structure to navigate and understand applications. 

> Miscoded user interfaces cause confusion for Assistive Technology users and result in applications that are more difficult to maintain. 

Miscommunication leads to miscoded user interfaces. Removing these miscommunications is an obvious path to more matintainable AND more usable applications. N-ARIA aims to limit user experienece damaging miscommunications for development teams by providing:

1. A behavioral public API friendly to those who are less familiar with iOS.
2. Examples of Assistive Technology best praces, alternatives, and anti-patterns.
3. A free App Store Application and coresponding Open Source Repo for easy sharing.

By providing this information for free MobA11y hopes to equip development teams with the information they need to communicate clearly about platform Assistive Technology users.

## Why N-ARIA? 
ARIA stands for Accessible Rich Internet Applications. It is a set of roles and attributes that accessibility experts use to talk about Web Accessibility and carry over to Mobile Accessibility. However, those words don't always mean the same thing for Native Platforms. 

> We have seen more than one well intentioned engineer do exactly what an Accessibility Expert asked them while reaching a disastrously inaccessible result! :)

N-ARIA aims to fill this gap in a meaningful way for development teams by leveraging a familiar grammar, behavioral demos, and freely available implementation details you can easily pass with a link.

## Documentation
Good code is well documented. The [N-ARIA Documentation Engine](https://ios.moba11y.com/n-aria) connects development teams to assistive technology user experiences in browser. No iOS Device needed! This connects designers with a deeper understanding of the intent of a component, testers a clear set of behaviors for testing, and engineers clear implementation requirements... even when patterns don't quite match. 

This documentation engine favors the following project structure:

- Types
- Components
- Styles
- Modifiers
- Experiences

This keeps code topical to the user experience need and individual code files reasonable in length.
  
### Types
Types represent common data formats that have a general expectation of being consistent across organizations and ecosystems. When applicable we will pull common fields from documented standards.

Supported Types

1. Contact

### Components
Components represent unique user experiences that have the expectation of coming along with similar user experiences, including assistive technology experiences. Because of this component names all start with NAria. This helps the purpose of this app as documentation. There is no need to discuss or link to our Styles or Modifiers. We are not design experts. We are assistive technology experts. 

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
Experiences represent a combination of components that frequently work together. When these experiences are built specifically to pair with a type name will always be NAriaType. 

Supported Experiences

- NAriaContact
- NAriaMasterDetail

## License: [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
MobA11y's intent is to provide this as a free eductional resource while discouraging commercial use. We hope thatyou will:

- Provice feedback on LinkedIn [@MobA11y](https://www.linkedin.com/company/moba11y).
- Contribute your ideas for improvements.
- [Post an Issue](https://github.com/MobA11y/n-aria-ios/issues/new) when you need help.

Much more to come...

"I discovered that the wisdom of the world, and a great deal of its folly also, is to be found in the pages of books. And." - CS Lewis
