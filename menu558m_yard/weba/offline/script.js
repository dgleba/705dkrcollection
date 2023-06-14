const app = new Vue({
  el: "#app",
  data: {
    version: "v 007",
    filter: "",
    rows: [
      {
        application: "NocoDB Projects Menu",
        mdescription: "NocoDB Menu to select a project",
        tlink: "http://10.5.1.129:9082"
      },

      {
        application: "TBD Metabase Dashboard App",
        mdescription: "Metabase for PMM Operations, Quality, etc. ( mbxx ) ",
        tlink: "http://10.5.1.129:6536/"
      },
    ]
  },


  methods: {
    highlightMatches(text) {
      const matchExists = text.
        toLowerCase().
        includes(this.filter.toLowerCase());
      if (!matchExists) return text;
      const re = new RegExp(this.filter, "ig");
      return text.replace(re, matchedText => `<strong>${matchedText}</strong>`);
    }
  },

  computed: {
    filteredRows() {
      return this.rows.filter(row => {
        const mdescription = row.mdescription.toLowerCase();
        const application = row.application.toLowerCase();
        const searchTerm = this.filter.toLowerCase();

        return (
          application.includes(searchTerm) || mdescription.includes(searchTerm));

      });
    }
  }
});


        // notes
        // const mdescription = row.mdescription.toString().toLowerCase();
        