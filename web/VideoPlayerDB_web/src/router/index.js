import { createRouter, createWebHistory } from "vue-router";
import Dashboard from "../views/Dashboard.vue";


import Tables from "../views/Tables.vue";
import Ranks from "../views/Ranks.vue"
import Users from "../views/Users.vue";
import Creators from "../views/Creators.vue"
import Videos from "../views/Videos.vue";
import Comments from "../views/Comments.vue"
import Labels from "../views/Labels.vue"
import Billing from "../views/Billing.vue";
import VirtualReality from "../views/VirtualReality.vue";
import RTL from "../views/Rtl.vue";
import Profile from "../views/Profile.vue";
import Signup from "../views/Signup.vue";
import Signin from "../views/Signin.vue";

const routes = [
  {
    path: "/",
    name: "/",
    redirect: "/ranks",
  },
  {
    path: "/dashboard-default",
    name: "Dashboard",
    component: Dashboard,
  },
  {
    path: "/tables",
    name: "Tables",
    component: Tables,
  },
  {
    path: "/ranks",
    name: "ranks",
    component: Ranks,
  },
  {
    path: "/users",
    name: "users",
    component: Users,
  },
  {
    path: "/creators",
    name: "creators",
    component: Creators,
  },
  {
    path: "/comments",
    name: "comments",
    component: Comments,
  },
  {
    path: "/labels",
    name: "labels",
    component: Labels,
  },
  {
    path: "/videos",
    name: "videos",
    component: Videos,
  },
  {
    path: "/billing",
    name: "Billing",
    component: Billing,
  },
  {
    path: "/virtual-reality",
    name: "Virtual Reality",
    component: VirtualReality,
  },
  {
    path: "/rtl-page",
    name: "RTL",
    component: RTL,
  },
  {
    path: "/profile",
    name: "Profile",
    component: Profile,
  },
  {
    path: "/signin",
    name: "Signin",
    component: Signin,
  },
  {
    path: "/signup",
    name: "Signup",
    component: Signup,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
  linkActiveClass: "active",
});

export default router;
