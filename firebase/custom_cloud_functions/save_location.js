const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.saveLocation = functions
  .region("europe-west3")
  .auth.user()
  .onCreate(async (user) => {
    const userEmail = user.email; // Email of the newly created user
    if (!userEmail) {
      console.log("The new user does not have an email address.");
      return;
    }

    try {
      const orgsRef = admin.firestore().collection("organisations");
      const userRef = admin.firestore().collection("users").doc(user.uid);

      // Check for the user"s email in userEmailList
      // eslint-disable-next-line max-len
      const userMatches = await orgsRef
        .where("userEmailList", "array-contains", userEmail)
        .get();
      userMatches.forEach((doc) => {
        doc.ref.update({
          userReferenceList: admin.firestore.FieldValue.arrayUnion(userRef),
        });
      });

      // Check for the user"s email in adminEmailList
      // eslint-disable-next-line max-len
      const adminMatches = await orgsRef
        .where("adminEmailList", "array-contains", userEmail)
        .get();
      adminMatches.forEach((doc) => {
        doc.ref.update({
          adminReferenceList: admin.firestore.FieldValue.arrayUnion(userRef),
          userReferenceList: admin.firestore.FieldValue.arrayUnion(userRef),
        });
      });
      // Update the user document to include the organisationID
      userRef.set(
        {
          organisationID: doc.id,
        },
        { merge: true },
      );

      console.log(`Processed user ${user.uid} with email ${userEmail}`);
    } catch (error) {
      console.error(`Error processing user: ${error}`);
    }
  });
