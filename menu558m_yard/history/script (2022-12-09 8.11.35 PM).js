const app = new Vue({
  el: "#app",
  data: {
    filter: "",
    rows: [
      {
        application: "Daily Meeting",
        mdescription: "Daily Meeting Issues Tracking  ( ops556 )",
        tlink: "http://10.4.71.231:6564"
      },

      {
        application: "LPA",
        mdescription: "Layered Process Audit ( lpa571 )",
        tlink: "http://10.4.71.231:6594/"
      },

      {
        application: "Metabase Dashboard App",
        mdescription: "Metabase for Ancaster Operations, Quality, etc. ( mb574 ) ",
        tlink: "http://10.4.71.231:6536/"
      },

      {
        application: "NocoDB Projects Menu",
        mdescription: "NocoDB Menu to select a project",
        tlink: "http://10.4.71.231:9080/dashboard/#/projects"
      },
      
      {
        application: "NocoDB Tool Breakage Report Data",
        mdescription: "Table with data reported using Tool Breakage web app",
        tlink: "http://10.4.71.231:9080/dashboard/#/nc/tooldevia624_syz0?name=tdbr_info&dbalias=&type=table&view=vw_tqtwz0jm8oq3un"
      },

      {
        application: "NocoDB Tool Breakage Report Form",
        mdescription: "Link to the tool breakage app form for data entry",
        tlink: "http://10.4.71.231:9080/dashboard/#/nc/base/406f48b2-404f-4ec0-8721-8ac7c1389333"
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