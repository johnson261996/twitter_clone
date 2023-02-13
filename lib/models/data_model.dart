


import 'dart:convert';

List<DataModel> dataModelFromJson(String str) => List<DataModel>.from(json.decode(str).map((x) => DataModel.fromJson(x)));

String dataModelToJson(List<DataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataModel {
  DataModel({
    required this.id,
    required this.date,
    required this.dateGmt,
    required this.guid,
    required this.modified,
    required this.modifiedGmt,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.content,
    required this.excerpt,
    required this.author,
    required this.featuredMedia,
    required this.commentStatus,
    required this.pingStatus,
    required this.sticky,
    required this.template,
    required this.format,
    required this.meta,
    required this.categories,
    required this.tags,
    required this.crunchbaseTag,
    required this.tcStoriesTax,
    required this.tcEcCategory,
    required this.tcEvent,
    required this.tcRegionsTax,
    required this.jetpackFeaturedMediaUrl,
    required this.parsely,
    required this.shortlink,
    required this.parselyMeta,
    required this.rapidData,
    required this.premiumContent,
    required this.premiumCutoffPercent,
    required this.featured,
    required this.subtitle,
    required this.editorialContentProvider,
    required this.tcCbMapping,
    this.associatedEvent,
    this.event,
    required this.authors,
    required this.hideFeaturedImage,
    required this.canonicalUrl,
    required this.primaryCategory,
    required this.links,
  });

  int id;
  DateTime date;
  DateTime dateGmt;
  Guid guid;
  DateTime modified;
  DateTime modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Guid title;
  Content content;
  Content excerpt;
  int author;
  int featuredMedia;
  String commentStatus;
  String pingStatus;
  bool sticky;
  String template;
  String format;
  Meta meta;
  List<int> categories;
  List<int> tags;
  List<dynamic> crunchbaseTag;
  List<dynamic> tcStoriesTax;
  List<dynamic> tcEcCategory;
  List<dynamic> tcEvent;
  List<int> tcRegionsTax;
  String jetpackFeaturedMediaUrl;
  Parsely parsely;
  String shortlink;
  ParselyMeta parselyMeta;
  RapidData rapidData;
  bool premiumContent;
  dynamic premiumCutoffPercent;
  bool featured;
  String subtitle;
  String editorialContentProvider;
  List<dynamic> tcCbMapping;
  dynamic associatedEvent;
  dynamic event;
  List<int> authors;
  bool hideFeaturedImage;
  String canonicalUrl;
  PrimaryCategory primaryCategory;
  Links links;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    dateGmt: DateTime.parse(json["date_gmt"]),
    guid: Guid.fromJson(json["guid"]),
    modified: DateTime.parse(json["modified"]),
    modifiedGmt: DateTime.parse(json["modified_gmt"]),
    slug: json["slug"],
    status: json["status"],
    type: json["type"],
    link: json["link"],
    title: Guid.fromJson(json["title"]),
    content: Content.fromJson(json["content"]),
    excerpt: Content.fromJson(json["excerpt"]),
    author: json["author"],
    featuredMedia: json["featured_media"],
    commentStatus: json["comment_status"],
    pingStatus: json["ping_status"],
    sticky: json["sticky"],
    template: json["template"],
    format: json["format"],
    meta: Meta.fromJson(json["meta"]),
    categories: List<int>.from(json["categories"].map((x) => x)),
    tags: List<int>.from(json["tags"].map((x) => x)),
    crunchbaseTag: List<dynamic>.from(json["crunchbase_tag"].map((x) => x)),
    tcStoriesTax: List<dynamic>.from(json["tc_stories_tax"].map((x) => x)),
    tcEcCategory: List<dynamic>.from(json["tc_ec_category"].map((x) => x)),
    tcEvent: List<dynamic>.from(json["tc_event"].map((x) => x)),
    tcRegionsTax: List<int>.from(json["tc_regions_tax"].map((x) => x)),
    jetpackFeaturedMediaUrl: json["jetpack_featured_media_url"],
    parsely: Parsely.fromJson(json["parsely"]),
    shortlink: json["shortlink"],
    parselyMeta: ParselyMeta.fromJson(json["parselyMeta"]),
    rapidData: RapidData.fromJson(json["rapidData"]),
    premiumContent: json["premiumContent"],
    premiumCutoffPercent: json["premiumCutoffPercent"],
    featured: json["featured"],
    subtitle: json["subtitle"],
    editorialContentProvider: json["editorialContentProvider"],
    tcCbMapping: List<dynamic>.from(json["tc_cb_mapping"].map((x) => x)),
    associatedEvent: json["associatedEvent"],
    event: json["event"],
    authors: List<int>.from(json["authors"].map((x) => x)),
    hideFeaturedImage: json["hide_featured_image"],
    canonicalUrl: json["canonical_url"],
    primaryCategory: PrimaryCategory.fromJson(json["primary_category"]),
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date.toIso8601String(),
    "date_gmt": dateGmt.toIso8601String(),
    "guid": guid.toJson(),
    "modified": modified.toIso8601String(),
    "modified_gmt": modifiedGmt.toIso8601String(),
    "slug": slug,
    "status": status,
    "type": type,
    "link": link,
    "title": title.toJson(),
    "content": content.toJson(),
    "excerpt": excerpt.toJson(),
    "author": author,
    "featured_media": featuredMedia,
    "comment_status": commentStatus,
    "ping_status": pingStatus,
    "sticky": sticky,
    "template": template,
    "format": format,
    "meta": meta.toJson(),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "crunchbase_tag": List<dynamic>.from(crunchbaseTag.map((x) => x)),
    "tc_stories_tax": List<dynamic>.from(tcStoriesTax.map((x) => x)),
    "tc_ec_category": List<dynamic>.from(tcEcCategory.map((x) => x)),
    "tc_event": List<dynamic>.from(tcEvent.map((x) => x)),
    "tc_regions_tax": List<dynamic>.from(tcRegionsTax.map((x) => x)),
    "jetpack_featured_media_url": jetpackFeaturedMediaUrl,
    "parsely": parsely.toJson(),
    "shortlink": shortlink,
    "parselyMeta": parselyMeta.toJson(),
    "rapidData": rapidData.toJson(),
    "premiumContent": premiumContent,
    "premiumCutoffPercent": premiumCutoffPercent,
    "featured": featured,
    "subtitle": subtitle,
    "editorialContentProvider": editorialContentProvider,
    "tc_cb_mapping": List<dynamic>.from(tcCbMapping.map((x) => x)),
    "associatedEvent": associatedEvent,
    "event": event,
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "hide_featured_image": hideFeaturedImage,
    "canonical_url": canonicalUrl,
    "primary_category": primaryCategory.toJson(),
    "_links": links.toJson(),
  };
}

class Content {
  Content({
    required this.rendered,
    required this.protected,
  });

  String rendered;
  bool protected;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    rendered: json["rendered"],
    protected: json["protected"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
    "protected": protected,
  };
}

class Guid {
  Guid({
    required this.rendered,
  });

  String rendered;

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };
}

class Links {
  Links({
    required this.self,
    required this.collection,
    required this.about,
    required this.replies,
    required this.versionHistory,
    required this.predecessorVersion,
    required this.authors,
    required this.httpsTechcrunchComEdit,
    required this.author,
    required this.wpFeaturedmedia,
    required this.wpAttachment,
    required this.wpTerm,
    required this.curies,
  });

  List<About> self;
  List<About> collection;
  List<About> about;
  List<Author> replies;
  List<VersionHistory> versionHistory;
  List<PredecessorVersion> predecessorVersion;
  List<Author> authors;
  List<About> httpsTechcrunchComEdit;
  List<Author> author;
  List<Author> wpFeaturedmedia;
  List<About> wpAttachment;
  List<WpTerm> wpTerm;
  List<Cury> curies;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    replies: List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
    versionHistory: List<VersionHistory>.from(json["version-history"].map((x) => VersionHistory.fromJson(x))),
    predecessorVersion: List<PredecessorVersion>.from(json["predecessor-version"].map((x) => PredecessorVersion.fromJson(x))),
    authors: List<Author>.from(json["authors"].map((x) => Author.fromJson(x))),
    httpsTechcrunchComEdit: List<About>.from(json["https://techcrunch.com/edit"].map((x) => About.fromJson(x))),
    author: List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
    wpFeaturedmedia: List<Author>.from(json["wp:featuredmedia"].map((x) => Author.fromJson(x))),
    wpAttachment: List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
    wpTerm: List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
    curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "about": List<dynamic>.from(about.map((x) => x.toJson())),
    "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
    "version-history": List<dynamic>.from(versionHistory.map((x) => x.toJson())),
    "predecessor-version": List<dynamic>.from(predecessorVersion.map((x) => x.toJson())),
    "authors": List<dynamic>.from(authors.map((x) => x.toJson())),
    "https://techcrunch.com/edit": List<dynamic>.from(httpsTechcrunchComEdit.map((x) => x.toJson())),
    "author": List<dynamic>.from(author.map((x) => x.toJson())),
    "wp:featuredmedia": List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
    "wp:attachment": List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
    "wp:term": List<dynamic>.from(wpTerm.map((x) => x.toJson())),
    "curies": List<dynamic>.from(curies.map((x) => x.toJson())),
  };
}

class About {
  About({
    required this.href,
  });

  String href;

  factory About.fromJson(Map<String, dynamic> json) => About(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class Author {
  Author({
    required this.embeddable,
    required this.href,
  });

  bool embeddable;
  String href;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "embeddable": embeddable,
    "href": href,
  };
}

class Cury {
  Cury({
    required this.name,
    required this.href,
    required this.templated,
  });

  String name;
  String href;
  bool templated;

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
    name: json["name"],
    href: json["href"],
    templated: json["templated"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "href": href,
    "templated": templated,
  };
}

class PredecessorVersion {
  PredecessorVersion({
    required this.id,
    required this.href,
  });

  int id;
  String href;

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) => PredecessorVersion(
    id: json["id"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "href": href,
  };
}

class VersionHistory {
  VersionHistory({
    required this.count,
    required this.href,
  });

  int count;
  String href;

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
    count: json["count"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "href": href,
  };
}

class WpTerm {
  WpTerm({
    required this.taxonomy,
    required this.embeddable,
    required this.href,
  });

  String taxonomy;
  bool embeddable;
  String href;

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
    taxonomy: json["taxonomy"],
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy": taxonomy,
    "embeddable": embeddable,
    "href": href,
  };
}

class Meta {
  Meta({
    required this.outcome,
    required this.status,
    required this.crunchbaseTag,
    required this.ampStatus,
    required this.relegenceEntities,
    required this.relegenceSubjects,
    required this.carmotUuid,
  });

  String outcome;
  String status;
  int crunchbaseTag;
  String ampStatus;
  List<dynamic> relegenceEntities;
  List<dynamic> relegenceSubjects;
  String carmotUuid;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    outcome: json["outcome"],
    status: json["status"],
    crunchbaseTag: json["crunchbase_tag"],
    ampStatus: json["amp_status"],
    relegenceEntities: List<dynamic>.from(json["relegenceEntities"].map((x) => x)),
    relegenceSubjects: List<dynamic>.from(json["relegenceSubjects"].map((x) => x)),
    carmotUuid: json["carmot_uuid"],
  );

  Map<String, dynamic> toJson() => {
    "outcome": outcome,
    "status": status,
    "crunchbase_tag": crunchbaseTag,
    "amp_status": ampStatus,
    "relegenceEntities": List<dynamic>.from(relegenceEntities.map((x) => x)),
    "relegenceSubjects": List<dynamic>.from(relegenceSubjects.map((x) => x)),
    "carmot_uuid": carmotUuid,
  };
}

class Parsely {
  Parsely({
    required this.version,
    required this.meta,
    required this.rendered,
  });

  String version;
  List<dynamic> meta;
  String rendered;

  factory Parsely.fromJson(Map<String, dynamic> json) => Parsely(
    version: json["version"],
    meta: List<dynamic>.from(json["meta"].map((x) => x)),
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "version": version,
    "meta": List<dynamic>.from(meta.map((x) => x)),
    "rendered": rendered,
  };
}

class ParselyMeta {
  ParselyMeta({
    required this.parselyTitle,
    required this.parselyLink,
    required this.parselyType,
    required this.parselyPubDate,
    required this.parselyImageUrl,
    required this.parselyAuthor,
    required this.parselySection,
    required this.parselyTags,
    required this.parselyMetadata,
  });

  String parselyTitle;
  String parselyLink;
  String parselyType;
  DateTime parselyPubDate;
  String parselyImageUrl;
  List<String> parselyAuthor;
  String parselySection;
  String parselyTags;
  String parselyMetadata;

  factory ParselyMeta.fromJson(Map<String, dynamic> json) => ParselyMeta(
    parselyTitle: json["parsely-title"],
    parselyLink: json["parsely-link"],
    parselyType: json["parsely-type"],
    parselyPubDate: DateTime.parse(json["parsely-pub-date"]),
    parselyImageUrl: json["parsely-image-url"],
    parselyAuthor: List<String>.from(json["parsely-author"].map((x) => x)),
    parselySection: json["parsely-section"],
    parselyTags: json["parsely-tags"],
    parselyMetadata: json["parsely-metadata"],
  );

  Map<String, dynamic> toJson() => {
    "parsely-title": parselyTitle,
    "parsely-link": parselyLink,
    "parsely-type": parselyType,
    "parsely-pub-date": parselyPubDate.toIso8601String(),
    "parsely-image-url": parselyImageUrl,
    "parsely-author": List<dynamic>.from(parselyAuthor.map((x) => x)),
    "parsely-section": parselySection,
    "parsely-tags": parselyTags,
    "parsely-metadata": parselyMetadata,
  };
}

class PrimaryCategory {
  PrimaryCategory({
    required this.termId,
    required this.name,
    required this.slug,
    required this.termGroup,
    required this.termTaxonomyId,
    required this.taxonomy,
    required this.description,
    required this.parent,
    required this.count,
    required this.filter,
  });

  int termId;
  String name;
  String slug;
  int termGroup;
  int termTaxonomyId;
  String taxonomy;
  String description;
  int parent;
  int count;
  String filter;

  factory PrimaryCategory.fromJson(Map<String, dynamic> json) => PrimaryCategory(
    termId: json["term_id"],
    name: json["name"],
    slug: json["slug"],
    termGroup: json["term_group"],
    termTaxonomyId: json["term_taxonomy_id"],
    taxonomy: json["taxonomy"],
    description: json["description"],
    parent: json["parent"],
    count: json["count"],
    filter: json["filter"],
  );

  Map<String, dynamic> toJson() => {
    "term_id": termId,
    "name": name,
    "slug": slug,
    "term_group": termGroup,
    "term_taxonomy_id": termTaxonomyId,
    "taxonomy": taxonomy,
    "description": description,
    "parent": parent,
    "count": count,
    "filter": filter,
  };
}

class RapidData {
  RapidData({
    required this.pt,
    required this.pct,
  });

  String pt;
  String pct;

  factory RapidData.fromJson(Map<String, dynamic> json) => RapidData(
    pt: json["pt"],
    pct: json["pct"],
  );

  Map<String, dynamic> toJson() => {
    "pt": pt,
    "pct": pct,
  };
}
